@global_var_6d428 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a5074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_15bd0:
  %.reg2mem = alloca i32, align 4
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_a5074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_15c1c, label %dec_label_pc_15bfa

dec_label_pc_15bfa:                               ; preds = %dec_label_pc_15bd0
  %4 = load ptr, ptr @global_var_a5080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_6d428, ptr nonnull %stack_var_-18)
  %.pre = load i32, ptr @global_var_a5074, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_15c1c

dec_label_pc_15c1c:                               ; preds = %dec_label_pc_15bfa, %dec_label_pc_15bd0
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_15c46, label %dec_label_pc_15c27

dec_label_pc_15c27:                               ; preds = %dec_label_pc_15c1c
  %8 = load i8, ptr %stack_var_-18, align 1
  %9 = mul i8 %8, %8
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_15c46

dec_label_pc_15c46:                               ; preds = %dec_label_pc_15c27, %dec_label_pc_15c1c
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_15c5b, label %dec_label_pc_15c56

dec_label_pc_15c56:                               ; preds = %dec_label_pc_15c46
  call void @__stack_chk_fail()
  br label %dec_label_pc_15c5b

dec_label_pc_15c5b:                               ; preds = %dec_label_pc_15c56, %dec_label_pc_15c46
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

