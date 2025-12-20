@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_198cc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 50)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  store i8 0, ptr %2, align 1
  %3 = bitcast ptr %stack_var_-24 to ptr
  %4 = call i64 @anon1(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_19925, label %dec_label_pc_19920

dec_label_pc_19920:                               ; preds = %dec_label_pc_198cc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_19925

dec_label_pc_19925:                               ; preds = %dec_label_pc_19920, %dec_label_pc_198cc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_19992:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-136 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %3 = load i64, ptr %stack_var_-136, align 8
  store i64 %3, ptr %arg1, align 8
  %4 = add i64 %0, 8
  %5 = inttoptr i64 %4 to ptr
  %6 = add i64 %0, 16
  %7 = inttoptr i64 %6 to ptr
  %8 = add i64 %0, 24
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %0, 32
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %0, 40
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %0, 48
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %0, 56
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %0, 64
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %0, 72
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %0, 80
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %0, 88
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %0, 96
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %0, 99
  %29 = inttoptr i64 %28 to ptr
  store i8 0, ptr %29, align 1
  %30 = bitcast ptr %arg1 to ptr
  call void @printLine(ptr %30)
  %31 = icmp eq ptr %arg1, null
  br i1 %31, label %dec_label_pc_19a93, label %dec_label_pc_19a84

dec_label_pc_19a84:                               ; preds = %dec_label_pc_19992
  call void @_ZdaPv(ptr nonnull %arg1, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_19a93

dec_label_pc_19a93:                               ; preds = %dec_label_pc_19a84, %dec_label_pc_19992
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %1, %32
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %33, label %dec_label_pc_19aa8, label %dec_label_pc_19aa3

dec_label_pc_19aa3:                               ; preds = %dec_label_pc_19a93
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_19aa8

dec_label_pc_19aa8:                               ; preds = %dec_label_pc_19aa3, %dec_label_pc_19a93
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

