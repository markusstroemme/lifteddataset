define void @anon1() local_unnamed_addr {
dec_label_pc_7d09:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_7d4d, label %dec_label_pc_7d43

dec_label_pc_7d43:                                ; preds = %dec_label_pc_7d09
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7d4d:                                ; preds = %dec_label_pc_7d09
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_7d8f, label %dec_label_pc_7d8a

dec_label_pc_7d8a:                                ; preds = %dec_label_pc_7d4d
  call void @__stack_chk_fail()
  br label %dec_label_pc_7d8f

dec_label_pc_7d8f:                                ; preds = %dec_label_pc_7d8a, %dec_label_pc_7d4d
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_7e6e:
  %0 = bitcast ptr %dataPtr to ptr
  call void @printLine(ptr %0)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

