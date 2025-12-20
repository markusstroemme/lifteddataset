@global_var_2cc94 = external constant [21 x i8]
@global_var_3d140 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_592a:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_3d140, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5968, label %dec_label_pc_5957

dec_label_pc_5957:                                ; preds = %dec_label_pc_592a
  call void @printLine(ptr @global_var_2cc94)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_598e

dec_label_pc_5968:                                ; preds = %dec_label_pc_592a
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_5987, label %dec_label_pc_597d

dec_label_pc_597d:                                ; preds = %dec_label_pc_5968
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5987:                                ; preds = %dec_label_pc_5968
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_598e

dec_label_pc_598e:                                ; preds = %dec_label_pc_5987, %dec_label_pc_5957
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strcat(ptr %stack_var_-128.0.reload, ptr nonnull %8)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_59e8, label %dec_label_pc_59e3

dec_label_pc_59e3:                                ; preds = %dec_label_pc_598e
  call void @__stack_chk_fail()
  br label %dec_label_pc_59e8

dec_label_pc_59e8:                                ; preds = %dec_label_pc_59e3, %dec_label_pc_598e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

