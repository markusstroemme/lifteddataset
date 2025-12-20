@global_var_4c1d6 = external constant [21 x i8]

define i32 @staticReturnsFalse.306() local_unnamed_addr {
dec_label_pc_1e896:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1e968:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.306()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1e9aa, label %dec_label_pc_1e999

dec_label_pc_1e999:                               ; preds = %dec_label_pc_1e968
  call void @printLine(ptr @global_var_4c1d6)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1e9d0

dec_label_pc_1e9aa:                               ; preds = %dec_label_pc_1e968
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_1e9c9, label %dec_label_pc_1e9bf

dec_label_pc_1e9bf:                               ; preds = %dec_label_pc_1e9aa
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1e9c9:                               ; preds = %dec_label_pc_1e9aa
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1e9d0

dec_label_pc_1e9d0:                               ; preds = %dec_label_pc_1e9c9, %dec_label_pc_1e999
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-128.0.reload to ptr
  %9 = call ptr @memmove(ptr %8, ptr nonnull %stack_var_-120, i32 100)
  %10 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %11 = add i64 %10, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  call void @free(ptr %8)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_1ea3a, label %dec_label_pc_1ea35

dec_label_pc_1ea35:                               ; preds = %dec_label_pc_1e9d0
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ea3a

dec_label_pc_1ea3a:                               ; preds = %dec_label_pc_1ea35, %dec_label_pc_1e9d0
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

