@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22796:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  store i32 0, ptr %2, align 4
  %3 = add i64 %1, 4
  %4 = inttoptr i64 %3 to ptr
  store i32 0, ptr %4, align 4
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i1 %6, false
  %8 = icmp eq i1 %7, false
  %9 = load i32, ptr %2, align 4
  call void @printIntLine(i32 %9)
  %10 = icmp eq i64 %1, 0
  br i1 %8, label %dec_label_pc_2283b, label %dec_label_pc_22816

dec_label_pc_22816:                               ; preds = %dec_label_pc_22796
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2285e, label %dec_label_pc_2282c

dec_label_pc_2282c:                               ; preds = %dec_label_pc_22816
  %11 = inttoptr i64 %1 to ptr
  %12 = call i64 @_ZdlPvm(ptr %11, i64 8)
  store i64 %12, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2285e

dec_label_pc_2283b:                               ; preds = %dec_label_pc_22796
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2285e, label %dec_label_pc_22851

dec_label_pc_22851:                               ; preds = %dec_label_pc_2283b
  %13 = inttoptr i64 %1 to ptr
  %14 = call i64 @_ZdlPvm(ptr %13, i64 8)
  store i64 %14, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2285e

dec_label_pc_2285e:                               ; preds = %dec_label_pc_22851, %dec_label_pc_2283b, %dec_label_pc_2282c, %dec_label_pc_22816
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3d05d:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

