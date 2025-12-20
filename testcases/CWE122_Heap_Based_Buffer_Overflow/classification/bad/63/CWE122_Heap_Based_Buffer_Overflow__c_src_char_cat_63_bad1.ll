define void @anon0() local_unnamed_addr {
dec_label_pc_1282a:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_12866, label %dec_label_pc_1285c

dec_label_pc_1285c:                               ; preds = %dec_label_pc_1282a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12866:                               ; preds = %dec_label_pc_1282a
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_128a8, label %dec_label_pc_128a3

dec_label_pc_128a3:                               ; preds = %dec_label_pc_12866
  call void @__stack_chk_fail()
  br label %dec_label_pc_128a8

dec_label_pc_128a8:                               ; preds = %dec_label_pc_128a3, %dec_label_pc_12866
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1293f:
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
  br i1 %6, label %dec_label_pc_129df, label %dec_label_pc_129da

dec_label_pc_129da:                               ; preds = %dec_label_pc_1293f
  call void @__stack_chk_fail()
  br label %dec_label_pc_129df

dec_label_pc_129df:                               ; preds = %dec_label_pc_129da, %dec_label_pc_1293f
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

