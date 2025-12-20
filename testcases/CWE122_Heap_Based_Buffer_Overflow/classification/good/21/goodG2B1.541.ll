@global_var_2cce8 = external constant [21 x i8]
@global_var_3d04c = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_6a83:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_3d04c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_6aae, label %dec_label_pc_6a9d

dec_label_pc_6a9d:                                ; preds = %dec_label_pc_6a83
  call void @printLine(ptr @global_var_2cce8)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_6ad4

dec_label_pc_6aae:                                ; preds = %dec_label_pc_6a83
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6acd, label %dec_label_pc_6ac3

dec_label_pc_6ac3:                                ; preds = %dec_label_pc_6aae
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6acd:                                ; preds = %dec_label_pc_6aae
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_6ad4

dec_label_pc_6ad4:                                ; preds = %dec_label_pc_6acd, %dec_label_pc_6a9d
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_6ada:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_3d04c, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strcat(ptr %1, ptr nonnull %3)
  call void @printLine(ptr %1)
  %5 = bitcast ptr %1 to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_6b71, label %dec_label_pc_6b6c

dec_label_pc_6b6c:                                ; preds = %dec_label_pc_6ada
  call void @__stack_chk_fail()
  br label %dec_label_pc_6b71

dec_label_pc_6b71:                                ; preds = %dec_label_pc_6b6c, %dec_label_pc_6ada
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

