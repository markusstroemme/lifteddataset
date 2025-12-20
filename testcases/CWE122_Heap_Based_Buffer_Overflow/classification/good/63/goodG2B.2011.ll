define void @anon1() local_unnamed_addr {
dec_label_pc_128aa:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_128e6, label %dec_label_pc_128dc

dec_label_pc_128dc:                               ; preds = %dec_label_pc_128aa
  call void @exit(i32 -1)
  unreachable

dec_label_pc_128e6:                               ; preds = %dec_label_pc_128aa
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = add i64 %2, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_12928, label %dec_label_pc_12923

dec_label_pc_12923:                               ; preds = %dec_label_pc_128e6
  call void @__stack_chk_fail()
  br label %dec_label_pc_12928

dec_label_pc_12928:                               ; preds = %dec_label_pc_12923, %dec_label_pc_128e6
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_129e1:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = bitcast ptr %dataPtr to ptr
  %3 = call ptr @strcat(ptr nonnull %1, ptr %2)
  call void @printLine(ptr %2)
  %4 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_12a81, label %dec_label_pc_12a7c

dec_label_pc_12a7c:                               ; preds = %dec_label_pc_129e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_12a81

dec_label_pc_12a81:                               ; preds = %dec_label_pc_12a7c, %dec_label_pc_129e1
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

