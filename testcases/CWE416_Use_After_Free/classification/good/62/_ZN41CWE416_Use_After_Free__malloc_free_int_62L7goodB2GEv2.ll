@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_18dff:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_18e43, label %dec_label_pc_18e3e

dec_label_pc_18e3e:                               ; preds = %dec_label_pc_18dff
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_18e43

dec_label_pc_18e43:                               ; preds = %dec_label_pc_18e3e, %dec_label_pc_18dff
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_18f40:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_18f84

dec_label_pc_18f84:                               ; preds = %dec_label_pc_18f84, %dec_label_pc_18f40
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 4
  %4 = add nuw nsw i64 %3, 400
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_18fa8, label %dec_label_pc_18f84

dec_label_pc_18fa8:                               ; preds = %dec_label_pc_18f84
  call void @free(ptr inttoptr (i64 400 to ptr))
  ret i64 ptrtoint (ptr @0 to i64)
}

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

