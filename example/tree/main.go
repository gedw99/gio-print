package main

import (
	"fmt"
	"image/color"
	"math"
	"math/rand"
	"os/exec"
	"time"

	"github.com/tdewolff/canvas"
	"github.com/tdewolff/canvas/renderers"
)

type node struct {
	x      float64
	y      float64
	angle  float64
	length float64
	prev   *node
	next   []*node
}

func randFloat(min, max float64) float64 {
	return min + (rand.Float64() * (max - min))
}

func renderTree(tree *canvas.Path, start *node, level int, col color.Color, colDelta color.Color, ctx *canvas.Context) *canvas.Path {
	width := ctx.StrokeWidth * 0.7
	R, G, B, A := col.RGBA()
	dR, dG, dB, dA := colDelta.RGBA()
	R += dR
	G += dG
	B += dB
	A += dA

	newCol := color.RGBA{uint8(R), uint8(G), uint8(B), uint8(A)}

	for _, next := range start.next {
		ctx.SetStrokeColor(col)
		ctx.SetStrokeWidth(width)
		line := new(canvas.Path)
		line.MoveTo(start.x, start.y)
		line.LineTo(next.x, next.y)
		line.Close()
		ctx.DrawPath(ctx.Width()/2, 0, line)
		//tree.MoveTo(start.x, start.y)
		//tree.LineTo(next.x, next.y)
		renderTree(tree, next, level+1, newCol, colDelta, ctx)
	}
	return tree
}

func GenerateTree(generations, branches int, angleMax, branchLength float64) (root *node) {
	base := &node{x: 0, y: 0, angle: 90}
	start := &node{x: 0, y: branchLength, angle: 90, prev: base, length: branchLength}
	base.next = []*node{start}
	for i := 0; i < branches; i++ {
		tree := generateTree(start, generations, branches, angleMax)
		start.next = append(start.next, tree)
		tree.prev = start
	}

	return base
}

func generateTree(start *node, generations, branches int, angleMax float64) (root *node) {
	root = new(node)
	angleDelta := randFloat(-angleMax, angleMax)
	root.length = start.length * 0.9 * randFloat(0.8, 1)
	root.angle = start.angle + angleDelta
	root.x = start.x + (root.length * math.Cos(root.angle*(math.Pi/180)))
	root.y = start.y + (root.length * math.Sin(root.angle*(math.Pi/180)))
	if generations == 1 {
		return
	}

	root.next = make([]*node, branches)
	var nextNode *node
	for j := 0; j < branches; j++ {
		nextNode = generateTree(root, generations-1, branches, angleMax)
		root.next[j] = nextNode
		nextNode.prev = root
	}
	return
}

func calcNumNodes(generations, branches int) int {
	var sum int
	for i := 0; i < generations; i++ {
		sum += int(math.Pow(float64(branches), float64(i)))
	}
	return sum
}

func calcColorDelta(a, b color.Color, increments uint8) color.Color {
	aR, aG, aB, aA := a.RGBA()
	bR, bG, bB, bA := b.RGBA()

	dR := uint8(bR-aR) / increments
	dG := uint8(bG-aG) / increments
	dB := uint8(bB-aB) / increments
	dA := uint8(bA-aA) / increments
	return color.RGBA{R: dR, G: dG, B: dB, A: dA}
}

func main() {
	rand.Seed(time.Now().UnixNano())
	generations := 9
	branches := 3
	angleMax := 40.0 // +- degrees
	branchLength := 80.0
	strokeWidth := 4.0
	colStart := color.RGBA{R: 0, G: 0, B: 0, A: 230}
	colEnd := color.RGBA{
		R: uint8(rand.Intn(256)),
		G: uint8(rand.Intn(256)),
		B: uint8(rand.Intn(256)),
		A: 230,
	} //canvas.Turquoise
	fmt.Println(calcNumNodes(generations, branches))

	canvasLength := 700.0
	canvasWidth := 1440.0

	c := canvas.New(canvasWidth, canvasLength)
	ctx := canvas.NewContext(c)

	ctx.SetStrokeCapper(canvas.RoundCap)
	ctx.SetStrokeJoiner(canvas.RoundJoin)
	ctx.SetStrokeWidth(strokeWidth)
	ctx.SetFillColor(canvas.Transparent)

	tree := GenerateTree(generations, branches, angleMax, branchLength)
	colDelta := calcColorDelta(colStart, colEnd, uint8(generations))
	renderTree(new(canvas.Path), tree, 0, colStart, colDelta, ctx)

	c.WriteFile("tree.pdf", renderers.PDF())

	cmd := exec.Command("open", "tree.pdf")
	cmd.Run()
}
