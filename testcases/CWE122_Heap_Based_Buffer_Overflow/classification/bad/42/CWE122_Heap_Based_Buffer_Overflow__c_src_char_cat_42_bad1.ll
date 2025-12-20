define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_1169a:
  %0 = ptrtoint ptr %data to i64
  %1 = bitcast ptr %data to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret ptr %data
}

define void @anon0() local_unnamed_addr {
dec_label_pc_116d1:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1170b, label %dec_label_pc_11701

dec_label_pc_11701:                               ; preds = %dec_label_pc_116d1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1170b:                               ; preds = %dec_label_pc_116d1
  %4 = bitcast ptr %1 to ptr
  %5 = call ptr @anon1(ptr %4)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = call ptr @strcat(ptr nonnull %6, ptr %5)
  call void @printLine(ptr %5)
  %8 = bitcast ptr %5 to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_11791, label %dec_label_pc_1178c

dec_label_pc_1178c:                               ; preds = %dec_label_pc_1170b
  call void @__stack_chk_fail()
  br label %dec_label_pc_11791

dec_label_pc_11791:                               ; preds = %dec_label_pc_1178c, %dec_label_pc_1170b
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

