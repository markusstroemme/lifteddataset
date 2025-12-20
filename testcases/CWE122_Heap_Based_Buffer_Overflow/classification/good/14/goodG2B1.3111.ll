@global_var_48573 = external constant [21 x i8]
@global_var_5e04c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_21c5a:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_21c94, label %dec_label_pc_21c8a

dec_label_pc_21c8a:                               ; preds = %dec_label_pc_21c5a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_21c94:                               ; preds = %dec_label_pc_21c5a
  %4 = load i32, ptr @global_var_5e04c, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %dec_label_pc_21cb0, label %dec_label_pc_21c9f

dec_label_pc_21c9f:                               ; preds = %dec_label_pc_21c94
  call void @printLine(ptr @global_var_48573)
  br label %dec_label_pc_21cd1

dec_label_pc_21cb0:                               ; preds = %dec_label_pc_21c94
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_21cd1

dec_label_pc_21cd1:                               ; preds = %dec_label_pc_21cb0, %dec_label_pc_21c9f
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = bitcast ptr %stack_var_-72 to ptr
  %13 = call ptr @strncpy(ptr nonnull %12, ptr %10, i32 %11)
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_21d5a, label %dec_label_pc_21d55

dec_label_pc_21d55:                               ; preds = %dec_label_pc_21cd1
  call void @__stack_chk_fail()
  br label %dec_label_pc_21d5a

dec_label_pc_21d5a:                               ; preds = %dec_label_pc_21d55, %dec_label_pc_21cd1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

