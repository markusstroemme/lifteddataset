define i32 @staticReturnsTrue.298() local_unnamed_addr {
dec_label_pc_209ed:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_20c04:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_20c3e, label %dec_label_pc_20c34

dec_label_pc_20c34:                               ; preds = %dec_label_pc_20c04
  call void @exit(i32 -1)
  unreachable

dec_label_pc_20c3e:                               ; preds = %dec_label_pc_20c04
  %4 = call i32 @staticReturnsTrue.298()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_20c6d, label %dec_label_pc_20c4c

dec_label_pc_20c4c:                               ; preds = %dec_label_pc_20c3e
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_20c6d

dec_label_pc_20c6d:                               ; preds = %dec_label_pc_20c4c, %dec_label_pc_20c3e
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = bitcast ptr %stack_var_-72 to ptr
  %13 = call ptr @strncpy(ptr nonnull %12, ptr %10, i32 %11)
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_20cf6, label %dec_label_pc_20cf1

dec_label_pc_20cf1:                               ; preds = %dec_label_pc_20c6d
  call void @__stack_chk_fail()
  br label %dec_label_pc_20cf6

dec_label_pc_20cf6:                               ; preds = %dec_label_pc_20cf1, %dec_label_pc_20c6d
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

