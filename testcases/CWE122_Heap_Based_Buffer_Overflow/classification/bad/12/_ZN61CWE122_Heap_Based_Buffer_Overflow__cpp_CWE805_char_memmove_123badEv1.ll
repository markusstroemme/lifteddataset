@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1da83:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1dacb, label %dec_label_pc_1dab4

dec_label_pc_1dab4:                               ; preds = %dec_label_pc_1da83
  %5 = call i64 @_Znam(i64 50)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1dae0

dec_label_pc_1dacb:                               ; preds = %dec_label_pc_1da83
  %7 = call i64 @_Znam(i64 100)
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %8, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1dae0

dec_label_pc_1dae0:                               ; preds = %dec_label_pc_1dacb, %dec_label_pc_1dab4
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  %11 = call ptr @memmove(ptr %10, ptr nonnull %stack_var_-120, i32 100)
  %12 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %13 = add i64 %12, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  %15 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %15, label %dec_label_pc_1db3c, label %dec_label_pc_1db30

dec_label_pc_1db30:                               ; preds = %dec_label_pc_1dae0
  %16 = ptrtoint ptr %stack_var_-120 to i64
  %17 = and i64 %16, 4294967288
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %10, ptr %18)
  br label %dec_label_pc_1db3c

dec_label_pc_1db3c:                               ; preds = %dec_label_pc_1db30, %dec_label_pc_1dae0
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_1db51, label %dec_label_pc_1db4c

dec_label_pc_1db4c:                               ; preds = %dec_label_pc_1db3c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1db51

dec_label_pc_1db51:                               ; preds = %dec_label_pc_1db4c, %dec_label_pc_1db3c
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

