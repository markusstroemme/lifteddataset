@global_var_48688 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2785e:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_27898, label %dec_label_pc_2788e

dec_label_pc_2788e:                               ; preds = %dec_label_pc_2785e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_27898:                               ; preds = %dec_label_pc_2785e
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_278c9, label %dec_label_pc_278a6

dec_label_pc_278a6:                               ; preds = %dec_label_pc_27898
  %6 = call ptr @memset(ptr %1, i32 65, i32 99)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_278ea

dec_label_pc_278c9:                               ; preds = %dec_label_pc_27898
  %10 = call ptr @memset(ptr %1, i32 65, i32 49)
  %11 = ptrtoint ptr %1 to i64
  %12 = add i64 %11, 49
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  br label %dec_label_pc_278ea

dec_label_pc_278ea:                               ; preds = %dec_label_pc_278c9, %dec_label_pc_278a6
  %14 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %15 = call i32 @strlen(ptr %14)
  %16 = bitcast ptr %stack_var_-72 to ptr
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %16, i32 %15, ptr @global_var_48688, ptr %1)
  call void @printLine(ptr %14)
  call void @free(ptr %1)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_2797b, label %dec_label_pc_27976

dec_label_pc_27976:                               ; preds = %dec_label_pc_278ea
  call void @__stack_chk_fail()
  br label %dec_label_pc_2797b

dec_label_pc_2797b:                               ; preds = %dec_label_pc_27976, %dec_label_pc_278ea
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3cc19:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

