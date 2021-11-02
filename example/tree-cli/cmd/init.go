package cmd

import (
	"gioui.org/example/print/tree-cli/data"
	"github.com/spf13/cobra"
)

// initCmd represents the init command
var initCmd = &cobra.Command{
	Use:   "init",
	Short: "Initialise a new tree-cli database and table",
	Long:  `Initialise a new tree-cli database and table`,
	Run: func(cmd *cobra.Command, args []string) {
		data.CreateTable()
	},
}

func init() {
	rootCmd.AddCommand(initCmd)
}