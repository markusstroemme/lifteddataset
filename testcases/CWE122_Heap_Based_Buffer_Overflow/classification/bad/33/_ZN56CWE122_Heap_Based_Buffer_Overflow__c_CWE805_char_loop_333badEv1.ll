@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34712:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3476d, label %dec_label_pc_34763

dec_label_pc_34763:                               ; preds = %dec_label_pc_34712
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3476d:                               ; preds = %dec_label_pc_34712
  %4 = bitcast ptr %1 to ptr
  %5 = ptrtoint ptr %1 to i64
  store i8 0, ptr %4, align 1
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_347a9

dec_label_pc_347a9:                               ; preds = %dec_label_pc_347a9, %dec_label_pc_3476d
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %8 = add i64 %storemerge3.reload, %5
  %9 = add i64 %storemerge3.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_347dc, label %dec_label_pc_347a9

dec_label_pc_347dc:                               ; preds = %dec_label_pc_347a9
  %14 = add i64 %5, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_34814, label %dec_label_pc_3480f

dec_label_pc_3480f:                               ; preds = %dec_label_pc_347dc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34814

dec_label_pc_34814:                               ; preds = %dec_label_pc_3480f, %dec_label_pc_347dc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

