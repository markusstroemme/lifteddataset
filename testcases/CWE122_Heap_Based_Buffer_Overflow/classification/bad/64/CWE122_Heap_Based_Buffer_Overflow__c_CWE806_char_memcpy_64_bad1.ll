define void @anon0() local_unnamed_addr {
dec_label_pc_12823:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1285f, label %dec_label_pc_12855

dec_label_pc_12855:                               ; preds = %dec_label_pc_12823
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1285f:                               ; preds = %dec_label_pc_12823
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_128a1, label %dec_label_pc_1289c

dec_label_pc_1289c:                               ; preds = %dec_label_pc_1285f
  call void @__stack_chk_fail()
  br label %dec_label_pc_128a1

dec_label_pc_128a1:                               ; preds = %dec_label_pc_1289c, %dec_label_pc_1285f
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_12938:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %dataVoidPtr)
  %2 = bitcast ptr %dataVoidPtr to ptr
  %3 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %2, i32 %1)
  call void @printLine(ptr %dataVoidPtr)
  call void @free(ptr %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_129f3, label %dec_label_pc_129ee

dec_label_pc_129ee:                               ; preds = %dec_label_pc_12938
  call void @__stack_chk_fail()
  br label %dec_label_pc_129f3

dec_label_pc_129f3:                               ; preds = %dec_label_pc_129ee, %dec_label_pc_12938
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

