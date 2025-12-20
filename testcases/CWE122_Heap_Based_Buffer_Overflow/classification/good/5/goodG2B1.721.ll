@global_var_7997c = external constant [3 x i8]
@global_var_7997f = external constant [21 x i8]
@global_var_a2074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8d78:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a2074, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_8db6, label %dec_label_pc_8da5

dec_label_pc_8da5:                                ; preds = %dec_label_pc_8d78
  call void @printLine(ptr @global_var_7997f)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_8ddc

dec_label_pc_8db6:                                ; preds = %dec_label_pc_8d78
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_8dd5, label %dec_label_pc_8dcb

dec_label_pc_8dcb:                                ; preds = %dec_label_pc_8db6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8dd5:                                ; preds = %dec_label_pc_8db6
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_8ddc

dec_label_pc_8ddc:                                ; preds = %dec_label_pc_8dd5, %dec_label_pc_8da5
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %stack_var_-128.0.reload, i32 100, ptr @global_var_7997c, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %9 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_8e47, label %dec_label_pc_8e42

dec_label_pc_8e42:                                ; preds = %dec_label_pc_8ddc
  call void @__stack_chk_fail()
  br label %dec_label_pc_8e47

dec_label_pc_8e47:                                ; preds = %dec_label_pc_8e42, %dec_label_pc_8ddc
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

