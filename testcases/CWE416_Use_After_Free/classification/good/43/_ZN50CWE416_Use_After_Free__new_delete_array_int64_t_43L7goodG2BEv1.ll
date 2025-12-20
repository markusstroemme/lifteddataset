@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_22ac9:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %1 = bitcast ptr %arg1 to ptr
  store i64 %0, ptr %1, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_22af7

dec_label_pc_22af7:                               ; preds = %dec_label_pc_22af7, %dec_label_pc_22ac9
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %2 = mul i64 %storemerge2.reload, 8
  %3 = add i64 %2, ptrtoint (ptr @global_var_320 to i64)
  %4 = inttoptr i64 %3 to ptr
  store i64 5, ptr %4, align 8
  %5 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %5, 100
  store i64 %5, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_22b1c, label %dec_label_pc_22af7

dec_label_pc_22b1c:                               ; preds = %dec_label_pc_22af7
  ret i64 %3
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_22b20:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  call void @printLongLongLine(i64 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_22b73, label %dec_label_pc_22b6e

dec_label_pc_22b6e:                               ; preds = %dec_label_pc_22b20
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_22b73

dec_label_pc_22b73:                               ; preds = %dec_label_pc_22b6e, %dec_label_pc_22b20
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

