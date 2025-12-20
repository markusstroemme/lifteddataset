@global_var_482dd = external constant [21 x i8]
@global_var_5e024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14565:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1459f, label %dec_label_pc_14595

dec_label_pc_14595:                               ; preds = %dec_label_pc_14565
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1459f:                               ; preds = %dec_label_pc_14565
  %4 = load i32, ptr @global_var_5e024, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %dec_label_pc_145bb, label %dec_label_pc_145aa

dec_label_pc_145aa:                               ; preds = %dec_label_pc_1459f
  call void @printLine(ptr @global_var_482dd)
  br label %dec_label_pc_145dc

dec_label_pc_145bb:                               ; preds = %dec_label_pc_1459f
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_145dc

dec_label_pc_145dc:                               ; preds = %dec_label_pc_145bb, %dec_label_pc_145aa
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %1, i32 %11)
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_14665, label %dec_label_pc_14660

dec_label_pc_14660:                               ; preds = %dec_label_pc_145dc
  call void @__stack_chk_fail()
  br label %dec_label_pc_14665

dec_label_pc_14665:                               ; preds = %dec_label_pc_14660, %dec_label_pc_145dc
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

