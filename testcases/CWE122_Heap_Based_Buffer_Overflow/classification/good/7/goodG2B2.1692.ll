@global_var_5e024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14667:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_146a1, label %dec_label_pc_14697

dec_label_pc_14697:                               ; preds = %dec_label_pc_14667
  call void @exit(i32 -1)
  unreachable

dec_label_pc_146a1:                               ; preds = %dec_label_pc_14667
  %4 = load i32, ptr @global_var_5e024, align 4
  %5 = icmp eq i32 %4, 5
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_146cd, label %dec_label_pc_146ac

dec_label_pc_146ac:                               ; preds = %dec_label_pc_146a1
  %7 = call ptr @memset(ptr %1, i32 65, i32 49)
  %8 = ptrtoint ptr %1 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_146cd

dec_label_pc_146cd:                               ; preds = %dec_label_pc_146ac, %dec_label_pc_146a1
  %11 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %12 = call i32 @strlen(ptr %11)
  %13 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %1, i32 %12)
  call void @printLine(ptr %11)
  call void @free(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_14756, label %dec_label_pc_14751

dec_label_pc_14751:                               ; preds = %dec_label_pc_146cd
  call void @__stack_chk_fail()
  br label %dec_label_pc_14756

dec_label_pc_14756:                               ; preds = %dec_label_pc_14751, %dec_label_pc_146cd
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

