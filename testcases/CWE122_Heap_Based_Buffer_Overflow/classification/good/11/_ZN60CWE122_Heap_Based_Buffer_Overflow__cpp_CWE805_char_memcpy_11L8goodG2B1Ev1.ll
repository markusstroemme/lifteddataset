@global_var_5169c = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_14f14:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-144.0.reg2mem = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_14f5d, label %dec_label_pc_14f4c

dec_label_pc_14f4c:                               ; preds = %dec_label_pc_14f14
  call void @printLine(ptr @global_var_5169c)
  store ptr null, ptr %stack_var_-144.0.reg2mem, align 8
  br label %dec_label_pc_14f78

dec_label_pc_14f5d:                               ; preds = %dec_label_pc_14f14
  %5 = call i64 @_Znam(i64 100)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-144.0.reg2mem, align 8
  br label %dec_label_pc_14f78

dec_label_pc_14f78:                               ; preds = %dec_label_pc_14f5d, %dec_label_pc_14f4c
  %stack_var_-144.0.reload = load ptr, ptr %stack_var_-144.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %8 = ptrtoint ptr %stack_var_-144.0.reload to i64
  %9 = load i64, ptr %stack_var_-136, align 8
  %10 = bitcast ptr %stack_var_-144.0.reload to ptr
  store i64 %9, ptr %10, align 8
  %11 = add i64 %8, 8
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %8, 16
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %8, 24
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %8, 32
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %8, 40
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %8, 48
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %8, 56
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %8, 64
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %8, 72
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %8, 80
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %8, 88
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %8, 96
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %8, 99
  %36 = inttoptr i64 %35 to ptr
  store i8 0, ptr %36, align 1
  call void @printLine(ptr %stack_var_-144.0.reload)
  %37 = icmp eq ptr %stack_var_-144.0.reload, null
  br i1 %37, label %dec_label_pc_15034, label %dec_label_pc_15025

dec_label_pc_15025:                               ; preds = %dec_label_pc_14f78
  call void @_ZdaPv(ptr %10, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_15034

dec_label_pc_15034:                               ; preds = %dec_label_pc_15025, %dec_label_pc_14f78
  %38 = call i64 @__readfsqword(i64 40)
  %39 = icmp eq i64 %0, %38
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %39, label %dec_label_pc_15049, label %dec_label_pc_15044

dec_label_pc_15044:                               ; preds = %dec_label_pc_15034
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_15049

dec_label_pc_15049:                               ; preds = %dec_label_pc_15044, %dec_label_pc_15034
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_4335f:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

