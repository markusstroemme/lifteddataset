@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1518e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-144.0.reg2mem = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_151e3, label %dec_label_pc_151c6

dec_label_pc_151c6:                               ; preds = %dec_label_pc_1518e
  %5 = call i64 @_Znam(i64 50)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-144.0.reg2mem, align 8
  br label %dec_label_pc_151fe

dec_label_pc_151e3:                               ; preds = %dec_label_pc_1518e
  %7 = call i64 @_Znam(i64 100)
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %8, ptr %stack_var_-144.0.reg2mem, align 8
  br label %dec_label_pc_151fe

dec_label_pc_151fe:                               ; preds = %dec_label_pc_151e3, %dec_label_pc_151c6
  %stack_var_-144.0.reload = load ptr, ptr %stack_var_-144.0.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %10 = ptrtoint ptr %stack_var_-144.0.reload to i64
  %11 = load i64, ptr %stack_var_-136, align 8
  %12 = bitcast ptr %stack_var_-144.0.reload to ptr
  store i64 %11, ptr %12, align 8
  %13 = add i64 %10, 8
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %10, 16
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %10, 24
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %10, 32
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %10, 40
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %10, 48
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %10, 56
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %10, 64
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %10, 72
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %10, 80
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %10, 88
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %10, 96
  %36 = inttoptr i64 %35 to ptr
  %37 = add i64 %10, 99
  %38 = inttoptr i64 %37 to ptr
  store i8 0, ptr %38, align 1
  call void @printLine(ptr %stack_var_-144.0.reload)
  %39 = icmp eq ptr %stack_var_-144.0.reload, null
  br i1 %39, label %dec_label_pc_152ba, label %dec_label_pc_152ab

dec_label_pc_152ab:                               ; preds = %dec_label_pc_151fe
  call void @_ZdaPv(ptr %12, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_152ba

dec_label_pc_152ba:                               ; preds = %dec_label_pc_152ab, %dec_label_pc_151fe
  %40 = call i64 @__readfsqword(i64 40)
  %41 = icmp eq i64 %0, %40
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %41, label %dec_label_pc_152cf, label %dec_label_pc_152ca

dec_label_pc_152ca:                               ; preds = %dec_label_pc_152ba
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_152cf

dec_label_pc_152cf:                               ; preds = %dec_label_pc_152ca, %dec_label_pc_152ba
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

