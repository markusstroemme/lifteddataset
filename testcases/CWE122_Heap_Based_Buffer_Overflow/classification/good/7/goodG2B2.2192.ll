@staticFive = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_146a0:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_146da, label %dec_label_pc_146d0

dec_label_pc_146d0:                               ; preds = %dec_label_pc_146a0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_146da:                               ; preds = %dec_label_pc_146a0
  %4 = load i32, ptr @staticFive, align 4
  %5 = icmp eq i32 %4, 5
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_14706, label %dec_label_pc_146e5

dec_label_pc_146e5:                               ; preds = %dec_label_pc_146da
  %7 = call ptr @memset(ptr %1, i32 65, i32 49)
  %8 = ptrtoint ptr %1 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_14706

dec_label_pc_14706:                               ; preds = %dec_label_pc_146e5, %dec_label_pc_146da
  %11 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %12 = bitcast ptr %stack_var_-72 to ptr
  %13 = call ptr @strcpy(ptr nonnull %12, ptr %11)
  call void @printLine(ptr %11)
  call void @free(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_1477c, label %dec_label_pc_14777

dec_label_pc_14777:                               ; preds = %dec_label_pc_14706
  call void @__stack_chk_fail()
  br label %dec_label_pc_1477c

dec_label_pc_1477c:                               ; preds = %dec_label_pc_14777, %dec_label_pc_14706
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

