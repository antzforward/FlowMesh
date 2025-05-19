func BenchmarkPacketProcessing(b *testing.B) {
    processor := core.NewProcessor()
    b.ResetTimer()
    for i := 0; i < b.N; i++ {
        processor.Handle(testPacket)
    }
}