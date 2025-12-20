@global_var_4a96e = external constant [10 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.420() local_unnamed_addr {
dec_label_pc_3983d:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3985b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.420()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_398b6, label %dec_label_pc_3987d

dec_label_pc_3987d:                               ; preds = %dec_label_pc_3985b
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = icmp eq i64 %4, 0
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_398b6, label %dec_label_pc_398a9

dec_label_pc_398a9:                               ; preds = %dec_label_pc_3987d
  %9 = inttoptr i64 %4 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_398b6

dec_label_pc_398b6:                               ; preds = %dec_label_pc_398a9, %dec_label_pc_3987d, %dec_label_pc_3985b
  %11 = call i32 @staticReturnsTrue.420()
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i1 %12, false
  %14 = zext i1 %13 to i64
  %15 = and i32 %11, -256
  %16 = sext i32 %15 to i64
  %17 = or i64 %14, %16
  %18 = icmp eq i1 %13, false
  store i64 %17, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_398d0, label %dec_label_pc_398c4

dec_label_pc_398c4:                               ; preds = %dec_label_pc_398b6
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-16.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_398d0

dec_label_pc_398d0:                               ; preds = %dec_label_pc_398c4, %dec_label_pc_398b6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

