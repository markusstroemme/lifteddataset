define void @anon0() local_unnamed_addr {
dec_label_pc_2173a:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_21774, label %dec_label_pc_2176a

dec_label_pc_2176a:                               ; preds = %dec_label_pc_2173a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_21774:                               ; preds = %dec_label_pc_2173a
  %4 = bitcast ptr %1 to ptr
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %10 = call i32 @strlen(ptr %4)
  %11 = bitcast ptr %stack_var_-72 to ptr
  %12 = call ptr @strncpy(ptr nonnull %11, ptr %4, i32 %10)
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_2184f, label %dec_label_pc_2184a

dec_label_pc_2184a:                               ; preds = %dec_label_pc_21774
  call void @__stack_chk_fail()
  br label %dec_label_pc_2184f

dec_label_pc_2184f:                               ; preds = %dec_label_pc_2184a, %dec_label_pc_21774
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

