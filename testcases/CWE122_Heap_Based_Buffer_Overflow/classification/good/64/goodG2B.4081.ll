@global_var_4871e = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2b017:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2b053, label %dec_label_pc_2b049

dec_label_pc_2b049:                               ; preds = %dec_label_pc_2b017
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2b053:                               ; preds = %dec_label_pc_2b017
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = add i64 %2, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_2b095, label %dec_label_pc_2b090

dec_label_pc_2b090:                               ; preds = %dec_label_pc_2b053
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b095

dec_label_pc_2b095:                               ; preds = %dec_label_pc_2b090, %dec_label_pc_2b053
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_2b171:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %dataVoidPtr)
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %2, i32 %1, ptr @global_var_4871e, ptr %dataVoidPtr)
  call void @printLine(ptr %dataVoidPtr)
  %4 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_2b234, label %dec_label_pc_2b22f

dec_label_pc_2b22f:                               ; preds = %dec_label_pc_2b171
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b234

dec_label_pc_2b234:                               ; preds = %dec_label_pc_2b22f, %dec_label_pc_2b171
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

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

