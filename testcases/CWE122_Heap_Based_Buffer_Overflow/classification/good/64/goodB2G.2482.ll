@global_var_bd304 = external constant [5 x i32]

define void @anon1() local_unnamed_addr {
dec_label_pc_16897:
  %stack_var_-24 = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-32, align 8
  %1 = call ptr @malloc(i32 200)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_168d9, label %dec_label_pc_168cf

dec_label_pc_168cf:                               ; preds = %dec_label_pc_16897
  call void @exit(i32 -1)
  unreachable

dec_label_pc_168d9:                               ; preds = %dec_label_pc_16897
  %5 = call ptr @wmemset(ptr %2, i32 65, i32 49)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %stack_var_-24, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = bitcast ptr %stack_var_-32 to ptr
  store i64 %10, ptr %11, align 8
  %12 = bitcast ptr %stack_var_-32 to ptr
  call void @anon0(ptr nonnull %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_16928, label %dec_label_pc_16923

dec_label_pc_16923:                               ; preds = %dec_label_pc_168d9
  call void @__stack_chk_fail()
  br label %dec_label_pc_16928

dec_label_pc_16928:                               ; preds = %dec_label_pc_16923, %dec_label_pc_168d9
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_16a5f:
  %0 = bitcast ptr %dataVoidPtr to ptr
  %1 = call i32 @wcslen(ptr %0)
  %2 = add i32 %1, 1
  %3 = call ptr @calloc(i32 %2, i32 4)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_16abc, label %dec_label_pc_16ab2

dec_label_pc_16ab2:                               ; preds = %dec_label_pc_16a5f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16abc:                               ; preds = %dec_label_pc_16a5f
  %6 = bitcast ptr %3 to ptr
  %7 = call ptr @wcscpy(ptr %6, ptr %0)
  call void @printWLine(ptr %6)
  call void @free(ptr %3)
  ret void
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_9feb2:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9fee4, label %dec_label_pc_9fec9

dec_label_pc_9fec9:                               ; preds = %dec_label_pc_9feb2
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_bd304)
  br label %dec_label_pc_9fee4

dec_label_pc_9fee4:                               ; preds = %dec_label_pc_9fec9, %dec_label_pc_9feb2
  ret void
}

declare ptr @calloc(i32, i32) local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

