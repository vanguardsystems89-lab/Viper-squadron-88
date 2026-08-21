# Viper Squadron 88 — Gateway Sector

## v0.8.5-demo Vertical Slice

Viper Squadron 88 — Gateway Sector is a Godot 4.3 space-combat vertical slice focused on a first-person cockpit experience, 6-DOF flight, tactical power management, qualification-gated mission deployment, hostile interceptor engagement, and mission telemetry.

**Creator:** Christopher L. Davis  
**Engine:** Godot 4.3  
**Build:** 0.8.5-demo  
**Channel:** public-demo

---

## Vertical Slice Objective

The v0.8.5-demo vertical slice establishes the complete playable foundation for the Gateway Sector combat experience.

### Core Demo Loop

1. Launch into the Gateway Sector cockpit.
2. Evaluate pilot and sniper qualification status.
3. Deploy the Viper when qualification requirements are satisfied.
4. Fly using the 6-DOF flight controller.
5. Dynamically distribute Quattro Core power.
6. Acquire hostile interceptor targets.
7. Engage targets with the weapons system.
8. Complete the combat objective.
9. Return mission results and telemetry.

---

## Core Systems

### Flight & Cockpit

- Full 6-DOF flight control.
- Pitch, yaw, roll, and throttle.
- Cockpit camera rig.
- Inertial camera response.
- Tactical cockpit interface.

### Quattro Core Power

Real-time power allocation between:

- Shields
- Engines / Thrusters
- Weapons

Power allocation directly affects combat capability and flight performance.

### Tactical HUD

The demo uses a Tactical Amber telemetry interface providing:

- Flight status
- Power distribution
- Target information
- Weapon status
- Mission state
- Telemetry

### Targeting & Weapons

- Hostile target acquisition.
- Optical-plane targeting alignment.
- Weapon firing.
- Projectile/weapon pipeline.
- Hostile interceptor engagement.

### Gateway Sector Mission

The primary demo mission establishes:

- Gateway Sector environment.
- Mission deployment.
- Hostile interceptor encounter.
- Combat objective.
- Mission completion state.
- Mission results and telemetry.

---

## Qualification Gate

Mission deployment is qualification-aware.

Pilot and sniper qualification are evaluated before deployment.

Qualification represents demonstrated capability and is separate from progression tier or power level.

The qualification architecture is intended to use:

- `AgentDossier` — authoritative career/identity resource.
- `QualificationExam` — position-specific qualification definition.
- `ProvingGround` — authoritative runtime evaluation layer.
- `MissionDeploymentGate` — deployment authorization.
- `CockpitHUD` — adapts to the authorized role/qualification.

---

## Controls

| Input | Function |
|---|---|
| W / S | Pitch up / down |
| A / D | Yaw left / right |
| Q / E | Roll left / right |
| Up / Down | Throttle |
| Left Mouse Button | Fire weapons |
| 1 | Shields power |
| 2 | Engine power |
| 3 | Weapons power |
| Esc | Quit |

---

## Release Engineering

The vertical slice includes infrastructure for:

- Build metadata.
- Version identification.
- Timestamping.
- Creator attribution.
- Versioned save-game data.
- Backup-first save migration.
- Automated Godot validation.
- CI validation on pushes and pull requests.

---

## Verification Requirements

The v0.8.5-demo is considered complete only when the following are empirically verified:

- [ ] Godot 4.3 project opens successfully.
- [ ] `project.godot` is valid.
- [ ] Gateway Sector main scene loads.
- [ ] Cockpit initializes.
- [ ] 6-DOF flight controls operate.
- [ ] Quattro Core power allocation operates.
- [ ] Target acquisition operates.
- [ ] Weapons fire successfully.
- [ ] Hostile interceptor AI operates.
- [ ] Qualification gate prevents unauthorized deployment.
- [ ] Mission objective can be completed.
- [ ] Mission completion state is recorded.
- [ ] Telemetry is generated.
- [ ] Save schema loads and migrates safely.
- [ ] Automated CI validation passes.
- [ ] Complete gameplay loop is playable from launch through mission completion.

> **Important:** A checklist item is not considered verified merely because the corresponding file or function exists. Verification requires the system to execute successfully in the Godot runtime or through an appropriate automated test.

---

## Project Structure

The intended vertical-slice structure is:

```text
Viper-squadron-88/
├── .github/
│   └── workflows/
├── scenes/
│   └── main.tscn
├── scripts/
│   ├── flight/
│   ├── cockpit/
│   ├── combat/
│   ├── qualification/
│   ├── telemetry/
│   └── mission/
├── systems/
│   ├── power/
│   ├── save/
│   └── metadata/
├── tests/
├── project.godot
└── README.md
