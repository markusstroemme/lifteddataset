define void @anon0() local_unnamed_addr {
dec_label_pc_15fb1:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_15feb, label %dec_label_pc_15fe1

dec_label_pc_15fe1:                               ; preds = %dec_label_pc_15fb1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15feb:                               ; preds = %dec_label_pc_15fb1
  %4 = bitcast ptr %1 to ptr
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 49
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %4)
  %10 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %1, i32 %9)
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_16096, label %dec_label_pc_16091

dec_label_pc_16091:                               ; preds = %dec_label_pc_15feb
  call void @__stack_chk_fail()
  br label %dec_label_pc_16096

dec_label_pc_16096:                               ; preds = %dec_label_pc_16091, %dec_label_pc_15feb
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

