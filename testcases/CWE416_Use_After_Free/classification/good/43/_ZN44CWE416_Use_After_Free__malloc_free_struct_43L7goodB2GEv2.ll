@global_var_320 = external constant [20 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_19646:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1968a

dec_label_pc_1968a:                               ; preds = %dec_label_pc_1968a, %dec_label_pc_19646
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, ptrtoint (ptr @global_var_320 to i64)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 8
  %6 = add i64 %3, add (i64 ptrtoint (ptr @global_var_320 to i64), i64 4)
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_196c7, label %dec_label_pc_1968a

dec_label_pc_196c7:                               ; preds = %dec_label_pc_1968a
  call void @free(ptr @global_var_320)
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_196d9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_1971d, label %dec_label_pc_19718

dec_label_pc_19718:                               ; preds = %dec_label_pc_196d9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1971d

dec_label_pc_1971d:                               ; preds = %dec_label_pc_19718, %dec_label_pc_196d9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

