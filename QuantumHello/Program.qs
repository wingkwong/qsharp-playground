namespace QuantumHello {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    @EntryPoint()
    operation SayHello() : Unit {
        Message("Hello Quantum World!");
    }
}
