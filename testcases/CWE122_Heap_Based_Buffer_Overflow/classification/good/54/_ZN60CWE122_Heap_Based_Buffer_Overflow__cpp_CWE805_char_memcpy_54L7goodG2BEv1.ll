@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_18dc4:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  %2 = call i64 @anon1(ptr %1)
  ret i64 %2
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_18e2b:
  %0 = call i64 @anon2(ptr %arg1)
  ret i64 %0
}

define i64 @anon2(ptr %arg1) local_unnamed_addr {
dec_label_pc_18e69:
  %0 = call i64 @anon3(ptr %arg1)
  ret i64 %0
}

define i64 @anon3(ptr %arg1) local_unnamed_addr {
dec_label_pc_18ea7:
  %0 = call i64 @anon4(ptr %arg1)
  ret i64 %0
}

define i64 @anon4(ptr %arg1) local_unnamed_addr {
dec_label_pc_18fc3:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-136 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %3 = load i64, ptr %stack_var_-136, align 8
  %4 = bitcast ptr %arg1 to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %0, 8
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %0, 16
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %0, 24
  %10 = inttoptr i64 %9 to ptr
  %11 = add i64 %0, 32
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %0, 40
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %0, 48
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %0, 56
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %0, 64
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %0, 72
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %0, 80
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %0, 88
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %0, 96
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %0, 99
  %30 = inttoptr i64 %29 to ptr
  store i8 0, ptr %30, align 1
  call void @printLine(ptr %arg1)
  %31 = icmp eq ptr %arg1, null
  br i1 %31, label %dec_label_pc_190a5, label %dec_label_pc_19096

dec_label_pc_19096:                               ; preds = %dec_label_pc_18fc3
  call void @_ZdaPv(ptr %4, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_190a5

dec_label_pc_190a5:                               ; preds = %dec_label_pc_19096, %dec_label_pc_18fc3
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %1, %32
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %33, label %dec_label_pc_190ba, label %dec_label_pc_190b5

dec_label_pc_190b5:                               ; preds = %dec_label_pc_190a5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_190ba

dec_label_pc_190ba:                               ; preds = %dec_label_pc_190b5, %dec_label_pc_190a5
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

