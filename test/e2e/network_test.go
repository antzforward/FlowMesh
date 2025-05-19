// test/e2e/network_test.go
func TestArabicRTL(t *testing.T) {
    app := startTestApplication("ar")
    defer app.Stop()
    
    // 验证布局方向
    if app.GetLayoutDirection() != rtl {
        t.Fatal("RTL布局未正确应用")
    }
}
