@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1a1b3:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store i8 0, ptr %2, align 1
  %3 = call i64 @anon1(i64 %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1a214, label %dec_label_pc_1a20f

dec_label_pc_1a20f:                               ; preds = %dec_label_pc_1a1b3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1a214

dec_label_pc_1a214:                               ; preds = %dec_label_pc_1a20f, %dec_label_pc_1a1b3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_1a331:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %2 = load i64, ptr %stack_var_-136, align 8
  %3 = inttoptr i64 %arg1 to ptr
  store i64 %2, ptr %3, align 8
  %4 = add i64 %arg1, 8
  %5 = inttoptr i64 %4 to ptr
  %6 = add i64 %arg1, 16
  %7 = inttoptr i64 %6 to ptr
  %8 = add i64 %arg1, 24
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %arg1, 32
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %arg1, 40
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %arg1, 48
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %arg1, 56
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %arg1, 64
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %arg1, 72
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %arg1, 80
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %arg1, 88
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %arg1, 96
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %arg1, 99
  %29 = inttoptr i64 %28 to ptr
  store i8 0, ptr %29, align 1
  %30 = inttoptr i64 %arg1 to ptr
  call void @printLine(ptr %30)
  %31 = icmp eq i64 %arg1, 0
  br i1 %31, label %dec_label_pc_1a421, label %dec_label_pc_1a412

dec_label_pc_1a412:                               ; preds = %dec_label_pc_1a331
  call void @_ZdaPv(ptr %3, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_1a421

dec_label_pc_1a421:                               ; preds = %dec_label_pc_1a412, %dec_label_pc_1a331
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %33, label %dec_label_pc_1a436, label %dec_label_pc_1a431

dec_label_pc_1a431:                               ; preds = %dec_label_pc_1a421
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1a436

dec_label_pc_1a436:                               ; preds = %dec_label_pc_1a431, %dec_label_pc_1a421
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

