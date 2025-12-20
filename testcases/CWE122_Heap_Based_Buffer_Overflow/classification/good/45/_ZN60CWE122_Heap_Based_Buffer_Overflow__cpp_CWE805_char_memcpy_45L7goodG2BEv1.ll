@0 = external global i32
@global_var_6c0c0 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_18414:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_6c0c0, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %4 = load i64, ptr %stack_var_-136, align 8
  %5 = bitcast ptr %1 to ptr
  store i64 %4, ptr %5, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = add i64 %2, 16
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %2, 24
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %2, 32
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %2, 40
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %2, 48
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %2, 56
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %2, 64
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %2, 72
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %2, 80
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %2, 88
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %2, 96
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %2, 99
  %31 = inttoptr i64 %30 to ptr
  store i8 0, ptr %31, align 1
  call void @printLine(ptr %1)
  %32 = icmp eq ptr %1, null
  br i1 %32, label %dec_label_pc_184fd, label %dec_label_pc_184ee

dec_label_pc_184ee:                               ; preds = %dec_label_pc_18414
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_184fd

dec_label_pc_184fd:                               ; preds = %dec_label_pc_184ee, %dec_label_pc_18414
  %33 = call i64 @__readfsqword(i64 40)
  %34 = icmp eq i64 %0, %33
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %34, label %dec_label_pc_18512, label %dec_label_pc_1850d

dec_label_pc_1850d:                               ; preds = %dec_label_pc_184fd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_18512

dec_label_pc_18512:                               ; preds = %dec_label_pc_1850d, %dec_label_pc_184fd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_18518:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  store ptr %1, ptr @global_var_6c0c0, align 8
  %2 = call i64 @anon0()
  ret i64 %2
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

