define void @anon1() local_unnamed_addr {
dec_label_pc_7d91:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_7dd5, label %dec_label_pc_7dcb

dec_label_pc_7dcb:                                ; preds = %dec_label_pc_7d91
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7dd5:                                ; preds = %dec_label_pc_7d91
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = load i64, ptr %stack_var_-24, align 8
  %9 = inttoptr i64 %8 to ptr
  call void @free(ptr %9)
  %10 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_7e23, label %dec_label_pc_7e1e

dec_label_pc_7e1e:                                ; preds = %dec_label_pc_7dd5
  call void @__stack_chk_fail()
  br label %dec_label_pc_7e23

dec_label_pc_7e23:                                ; preds = %dec_label_pc_7e1e, %dec_label_pc_7dd5
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_7e98:
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

