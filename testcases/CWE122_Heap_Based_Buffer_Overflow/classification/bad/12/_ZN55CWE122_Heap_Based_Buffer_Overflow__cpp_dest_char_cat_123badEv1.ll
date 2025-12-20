@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1a56d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1a5b5, label %dec_label_pc_1a59e

dec_label_pc_1a59e:                               ; preds = %dec_label_pc_1a56d
  %5 = call i64 @_Znam(i64 50)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1a5ca

dec_label_pc_1a5b5:                               ; preds = %dec_label_pc_1a56d
  %7 = call i64 @_Znam(i64 100)
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %8, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1a5ca

dec_label_pc_1a5ca:                               ; preds = %dec_label_pc_1a5b5, %dec_label_pc_1a59e
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = bitcast ptr %stack_var_-120 to ptr
  %11 = call ptr @strcat(ptr %stack_var_-128.0.reload, ptr nonnull %10)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %12 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %12, label %dec_label_pc_1a616, label %dec_label_pc_1a60a

dec_label_pc_1a60a:                               ; preds = %dec_label_pc_1a5ca
  %13 = ptrtoint ptr %stack_var_-120 to i64
  %14 = bitcast ptr %stack_var_-128.0.reload to ptr
  %15 = and i64 %13, 4294967288
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_1a616

dec_label_pc_1a616:                               ; preds = %dec_label_pc_1a60a, %dec_label_pc_1a5ca
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_1a62b, label %dec_label_pc_1a626

dec_label_pc_1a626:                               ; preds = %dec_label_pc_1a616
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1a62b

dec_label_pc_1a62b:                               ; preds = %dec_label_pc_1a626, %dec_label_pc_1a616
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_38066:
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

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

