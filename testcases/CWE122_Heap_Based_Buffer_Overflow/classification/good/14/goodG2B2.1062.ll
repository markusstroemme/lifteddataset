@global_var_3d03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ad57:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_3d03c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_adab, label %dec_label_pc_ad85

dec_label_pc_ad85:                                ; preds = %dec_label_pc_ad57
  %4 = call ptr @malloc(i32 100)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_ada4, label %dec_label_pc_ad9a

dec_label_pc_ad9a:                                ; preds = %dec_label_pc_ad85
  call void @exit(i32 -1)
  unreachable

dec_label_pc_ada4:                                ; preds = %dec_label_pc_ad85
  %7 = bitcast ptr %4 to ptr
  store i8 0, ptr %7, align 1
  store ptr %7, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_adab

dec_label_pc_adab:                                ; preds = %dec_label_pc_ada4, %dec_label_pc_ad57
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %8 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %9 = bitcast ptr %stack_var_-120 to ptr
  %10 = call ptr @strcpy(ptr %stack_var_-128.0.reload, ptr nonnull %9)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %11 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_ae05, label %dec_label_pc_ae00

dec_label_pc_ae00:                                ; preds = %dec_label_pc_adab
  call void @__stack_chk_fail()
  br label %dec_label_pc_ae05

dec_label_pc_ae05:                                ; preds = %dec_label_pc_ae00, %dec_label_pc_adab
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

