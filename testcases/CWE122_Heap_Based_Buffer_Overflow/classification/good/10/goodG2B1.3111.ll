@global_var_4c200 = external constant [21 x i8]
@global_var_64218 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1ee4a:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_64218, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1ee88, label %dec_label_pc_1ee77

dec_label_pc_1ee77:                               ; preds = %dec_label_pc_1ee4a
  call void @printLine(ptr @global_var_4c200)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1eeae

dec_label_pc_1ee88:                               ; preds = %dec_label_pc_1ee4a
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_1eea7, label %dec_label_pc_1ee9d

dec_label_pc_1ee9d:                               ; preds = %dec_label_pc_1ee88
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1eea7:                               ; preds = %dec_label_pc_1ee88
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1eeae

dec_label_pc_1eeae:                               ; preds = %dec_label_pc_1eea7, %dec_label_pc_1ee77
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
  br i1 %14, label %dec_label_pc_1ef18, label %dec_label_pc_1ef13

dec_label_pc_1ef13:                               ; preds = %dec_label_pc_1eeae
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ef18

dec_label_pc_1ef18:                               ; preds = %dec_label_pc_1ef13, %dec_label_pc_1eeae
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

