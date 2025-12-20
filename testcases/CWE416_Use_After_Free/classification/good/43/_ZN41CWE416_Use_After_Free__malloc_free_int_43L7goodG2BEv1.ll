@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_18bc5:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_18c09

dec_label_pc_18c09:                               ; preds = %dec_label_pc_18c09, %dec_label_pc_18bc5
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 4
  %4 = add nuw nsw i64 %3, 400
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_18c2d, label %dec_label_pc_18c09

dec_label_pc_18c2d:                               ; preds = %dec_label_pc_18c09
  ret i64 796
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_18c31:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-24, align 8
  %1 = call i64 @anon0(ptr nonnull %stack_var_-24)
  %2 = load ptr, ptr %stack_var_-24, align 8
  %3 = load i32, ptr %2, align 4
  call void @printIntLine(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_18c82, label %dec_label_pc_18c7d

dec_label_pc_18c7d:                               ; preds = %dec_label_pc_18c31
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_18c82

dec_label_pc_18c82:                               ; preds = %dec_label_pc_18c7d, %dec_label_pc_18c31
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

