@global_var_2ce3d = external constant [21 x i8]
@global_var_3d0c0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_e5a8:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_e5e2, label %dec_label_pc_e5d8

dec_label_pc_e5d8:                                ; preds = %dec_label_pc_e5a8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e5e2:                                ; preds = %dec_label_pc_e5a8
  %4 = load i32, ptr @global_var_3d0c0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_e5fd, label %dec_label_pc_e5ec

dec_label_pc_e5ec:                                ; preds = %dec_label_pc_e5e2
  call void @printLine(ptr @global_var_2ce3d)
  br label %dec_label_pc_e61e

dec_label_pc_e5fd:                                ; preds = %dec_label_pc_e5e2
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_e61e

dec_label_pc_e61e:                                ; preds = %dec_label_pc_e5fd, %dec_label_pc_e5ec
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = bitcast ptr %stack_var_-72 to ptr
  %12 = call ptr @strcat(ptr nonnull %11, ptr %10)
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_e694, label %dec_label_pc_e68f

dec_label_pc_e68f:                                ; preds = %dec_label_pc_e61e
  call void @__stack_chk_fail()
  br label %dec_label_pc_e694

dec_label_pc_e694:                                ; preds = %dec_label_pc_e68f, %dec_label_pc_e61e
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

