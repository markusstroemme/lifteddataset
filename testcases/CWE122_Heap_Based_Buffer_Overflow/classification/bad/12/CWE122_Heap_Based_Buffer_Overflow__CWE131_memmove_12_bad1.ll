@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b771:
  %stack_var_-64.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_b7c1, label %dec_label_pc_b7a2

dec_label_pc_b7a2:                                ; preds = %dec_label_pc_b771
  %3 = call ptr @malloc(i32 10)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-64.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_b7e0, label %dec_label_pc_b7b7

dec_label_pc_b7b7:                                ; preds = %dec_label_pc_b7a2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b7c1:                                ; preds = %dec_label_pc_b771
  %6 = call ptr @malloc(i32 40)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-64.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_b7e0, label %dec_label_pc_b7d6

dec_label_pc_b7d6:                                ; preds = %dec_label_pc_b7c1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b7e0:                                ; preds = %dec_label_pc_b7c1, %dec_label_pc_b7a2
  %stack_var_-64.0.in.reload = load ptr, ptr %stack_var_-64.0.in.reg2mem, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %9 = call ptr @memmove(ptr %stack_var_-64.0.in.reload, ptr nonnull %stack_var_-56, i32 40)
  %10 = bitcast ptr %stack_var_-64.0.in.reload to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  call void @free(ptr %stack_var_-64.0.in.reload)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_b84e, label %dec_label_pc_b849

dec_label_pc_b849:                                ; preds = %dec_label_pc_b7e0
  call void @__stack_chk_fail()
  br label %dec_label_pc_b84e

dec_label_pc_b84e:                                ; preds = %dec_label_pc_b849, %dec_label_pc_b7e0
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

