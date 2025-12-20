@global_var_799b0 = external constant [3 x i8]
@global_var_a2014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_9198:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a2014, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_91ec, label %dec_label_pc_91c6

dec_label_pc_91c6:                                ; preds = %dec_label_pc_9198
  %4 = call ptr @malloc(i32 50)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_91e5, label %dec_label_pc_91db

dec_label_pc_91db:                                ; preds = %dec_label_pc_91c6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_91e5:                                ; preds = %dec_label_pc_91c6
  %7 = bitcast ptr %4 to ptr
  store i8 0, ptr %7, align 1
  store ptr %7, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_91ec

dec_label_pc_91ec:                                ; preds = %dec_label_pc_91e5, %dec_label_pc_9198
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %8 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %stack_var_-128.0.reload, i32 100, ptr @global_var_799b0, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_9257, label %dec_label_pc_9252

dec_label_pc_9252:                                ; preds = %dec_label_pc_91ec
  call void @__stack_chk_fail()
  br label %dec_label_pc_9257

dec_label_pc_9257:                                ; preds = %dec_label_pc_9252, %dec_label_pc_91ec
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

