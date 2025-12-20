@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_1c09b:
  %0 = call i64 @_Znam(i64 100)
  %1 = bitcast ptr %arg1 to ptr
  store i64 %0, ptr %1, align 8
  store i8 0, ptr inttoptr (i64 100 to ptr), align 4
  ret i64 100
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_1c0cc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-128, align 8
  %1 = call i64 @anon0(ptr nonnull %stack_var_-128)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = load ptr, ptr %stack_var_-128, align 8
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strcat(ptr %3, ptr nonnull %4)
  %6 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %6)
  %7 = load ptr, ptr %stack_var_-128, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %dec_label_pc_1c149, label %dec_label_pc_1c13d

dec_label_pc_1c13d:                               ; preds = %dec_label_pc_1c0cc
  %9 = ptrtoint ptr %stack_var_-120 to i64
  %10 = bitcast ptr %7 to ptr
  %11 = and i64 %9, 4294967288
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_1c149

dec_label_pc_1c149:                               ; preds = %dec_label_pc_1c13d, %dec_label_pc_1c0cc
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_1c15e, label %dec_label_pc_1c159

dec_label_pc_1c159:                               ; preds = %dec_label_pc_1c149
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c15e

dec_label_pc_1c15e:                               ; preds = %dec_label_pc_1c159, %dec_label_pc_1c149
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

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

