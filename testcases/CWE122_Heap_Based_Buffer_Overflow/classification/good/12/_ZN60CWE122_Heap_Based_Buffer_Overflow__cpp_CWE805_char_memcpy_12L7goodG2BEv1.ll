@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_152d5:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  store i8 0, ptr %3, align 1
  %4 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %5 = load i64, ptr %stack_var_-136, align 8
  %6 = inttoptr i64 %2 to ptr
  store i64 %5, ptr %6, align 8
  %7 = add i64 %2, 8
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %2, 16
  %10 = inttoptr i64 %9 to ptr
  %11 = add i64 %2, 24
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %2, 32
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %2, 40
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %2, 48
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %2, 56
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %2, 64
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %2, 72
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %2, 80
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %2, 88
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %2, 96
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %2, 99
  %32 = inttoptr i64 %31 to ptr
  store i8 0, ptr %32, align 1
  call void @printLine(ptr %3)
  %33 = icmp eq i64 %2, 0
  br i1 %33, label %dec_label_pc_15401, label %dec_label_pc_153f2

dec_label_pc_153f2:                               ; preds = %dec_label_pc_152d5
  call void @_ZdaPv(ptr %6, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_15401

dec_label_pc_15401:                               ; preds = %dec_label_pc_153f2, %dec_label_pc_152d5
  %34 = call i64 @__readfsqword(i64 40)
  %35 = icmp eq i64 %0, %34
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %35, label %dec_label_pc_15416, label %dec_label_pc_15411

dec_label_pc_15411:                               ; preds = %dec_label_pc_15401
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_15416

dec_label_pc_15416:                               ; preds = %dec_label_pc_15411, %dec_label_pc_15401
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4336e:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

