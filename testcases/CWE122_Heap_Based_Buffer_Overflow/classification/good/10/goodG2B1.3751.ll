@global_var_4c30c = external constant [21 x i8]
@global_var_64218 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_23dab:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_64218, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_23de9, label %dec_label_pc_23dd8

dec_label_pc_23dd8:                               ; preds = %dec_label_pc_23dab
  call void @printLine(ptr @global_var_4c30c)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_23e0f

dec_label_pc_23de9:                               ; preds = %dec_label_pc_23dab
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_23e08, label %dec_label_pc_23dfe

dec_label_pc_23dfe:                               ; preds = %dec_label_pc_23de9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_23e08:                               ; preds = %dec_label_pc_23de9
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_23e0f

dec_label_pc_23e0f:                               ; preds = %dec_label_pc_23e08, %dec_label_pc_23dd8
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strncat(ptr %stack_var_-128.0.reload, ptr nonnull %8, i32 100)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_23e6e, label %dec_label_pc_23e69

dec_label_pc_23e69:                               ; preds = %dec_label_pc_23e0f
  call void @__stack_chk_fail()
  br label %dec_label_pc_23e6e

dec_label_pc_23e6e:                               ; preds = %dec_label_pc_23e69, %dec_label_pc_23e0f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

