define void @anon0() local_unnamed_addr {
dec_label_pc_186df:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1871b, label %dec_label_pc_18711

dec_label_pc_18711:                               ; preds = %dec_label_pc_186df
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1871b:                               ; preds = %dec_label_pc_186df
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_1875d, label %dec_label_pc_18758

dec_label_pc_18758:                               ; preds = %dec_label_pc_1871b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1875d

dec_label_pc_1875d:                               ; preds = %dec_label_pc_18758, %dec_label_pc_1871b
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_187f4:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %dataPtr to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = bitcast ptr %dataPtr to ptr
  %4 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %3, i32 %2)
  call void @printLine(ptr %1)
  call void @free(ptr %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_188a7, label %dec_label_pc_188a2

dec_label_pc_188a2:                               ; preds = %dec_label_pc_187f4
  call void @__stack_chk_fail()
  br label %dec_label_pc_188a7

dec_label_pc_188a7:                               ; preds = %dec_label_pc_188a2, %dec_label_pc_187f4
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

