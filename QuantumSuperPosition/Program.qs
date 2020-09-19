namespace QuantumSuperPosition {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Measurement;
    

    @EntryPoint()
    operation GenerateRandomBit() : Result {
        // Allocate a qubit
        using (q = Qubit()) {
            Message("Initialized qubit:");
            DumpMachine();
            Message(" ");
            // Put the qubit to superposition
            H(q);
            Message("Qubit after applying H: ");
            DumpMachine();
            Message(" ");
            // Performs a measurement of a single qubit in the Pauli Z basis.
            // Pr(Zero||ψ⟩)=⟨ψ|0⟩⟨0|ψ⟩.
            let randomBit = M(q);
            Message("Qubit after the measurement: ");
            DumpMachine();
            Message(" ");
            Reset(q);
            Message("Qubit after resetting: ");
            DumpMachine();
            Message(" ");
            return randomBit;
        }

        // Initialized qubit:
        // # wave function for qubits with ids (least to most significant): 0
        // ∣0❭:    1.000000 +  0.000000 i  ==     ******************** [ 1.000000 ]     --- [  0.00000 rad ]
        // ∣1❭:    0.000000 +  0.000000 i  ==                          [ 0.000000 ]

        // Qubit after applying H:
        // # wave function for qubits with ids (least to most significant): 0
        // ∣0❭:    0.707107 +  0.000000 i  ==     ***********          [ 0.500000 ]     --- [  0.00000 rad ]
        // ∣1❭:    0.707107 +  0.000000 i  ==     ***********          [ 0.500000 ]     --- [  0.00000 rad ]

        // Qubit after the measurement:
        // # wave function for qubits with ids (least to most significant): 0
        // ∣0❭:    1.000000 +  0.000000 i  ==     ******************** [ 1.000000 ]     --- [  0.00000 rad ]
        // ∣1❭:    0.000000 +  0.000000 i  ==                          [ 0.000000 ]

        // Qubit after resetting:
        // # wave function for qubits with ids (least to most significant): 0
        // ∣0❭:    1.000000 +  0.000000 i  ==     ******************** [ 1.000000 ]     --- [  0.00000 rad ]
        // ∣1❭:    0.000000 +  0.000000 i  ==                          [ 0.000000 ]

    }
}

