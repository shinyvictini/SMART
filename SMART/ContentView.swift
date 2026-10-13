//
//  ContentView.swift
//  SMART
//
//  Created by Jerome Saad on 13/10/2026.
//


import SwiftUI

struct ContentView: View {
    @State private var isConnected = false
    @State private var beepMessage = "Ready when you are."
    @State private var testCount = 0

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            VStack(spacing: 28) {
                VStack(spacing: 8) {
                    Image(systemName: "applewatch")
                        .font(.system(size: 48))
                        .foregroundStyle(.teal)

                    Text("SMART")
                        .font(.system(size: 34, weight: .bold))

                    Text("Reclaim your time. Reconnect with your world.")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.secondary)
                }
                .padding(.top, 24)

                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Circle()
                            .fill(isConnected ? .green : .orange)
                            .frame(width: 10, height: 10)

                        Text(isConnected ? "SMART Connected" : "SMART Not Connected")
                            .font(.headline)

                        Spacer()

                        Image(systemName: "antenna.radiowaves.left.and.right")
                            .foregroundStyle(.secondary)
                    }

                    Text("Your SMART device will gently interrupt autopilot scrolling.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)

                    Button {
                        // Bluetooth connection will be added next.
                        isConnected.toggle()
                    } label: {
                        Text(isConnected ? "Disconnect" : "Connect Device")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.teal)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                    }
                }
                .padding(20)
                .background(Color(.secondarySystemGroupedBackground))
                .clipShape(RoundedRectangle(cornerRadius: 20))

                VStack(spacing: 14) {
                    Image(systemName: "waveform")
                        .font(.system(size: 30))
                        .foregroundStyle(.teal)

                    Text("Test Beep")
                        .font(.title2.bold())

                    Text(beepMessage)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)

                    Button {
                        testCount += 1
                        beepMessage = "Test \(testCount) ready — Bluetooth comes next."
                    } label: {
                        Label("Test Beep", systemImage: "speaker.wave.2.fill")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(.tertiarySystemFill))
                            .foregroundStyle(.primary)
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                    }
                }
                .padding(20)
                .frame(maxWidth: .infinity)
                .background(Color(.secondarySystemGroupedBackground))
                .clipShape(RoundedRectangle(cornerRadius: 20))

                Spacer(minLength: 0)

                Text("RECOGNISE  •  UNDERSTAND  •  INTERVENE  •  RECONNECT")
                    .font(.system(size: 10, weight: .medium))
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 12)
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ContentView()
}
