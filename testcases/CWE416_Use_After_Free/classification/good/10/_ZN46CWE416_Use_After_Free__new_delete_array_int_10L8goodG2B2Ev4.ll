@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_249a9:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_24a1b, label %dec_label_pc_249c7

dec_label_pc_249c7:                               ; preds = %dec_label_pc_249a9
  %2 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_249df

dec_label_pc_249df:                               ; preds = %dec_label_pc_249df, %dec_label_pc_249c7
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_24a04, label %dec_label_pc_249df

dec_label_pc_24a04:                               ; preds = %dec_label_pc_249df
  %.pr = load i32, ptr @global_var_630a8, align 4
  %7 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_24a1b, label %dec_label_pc_24a0e

dec_label_pc_24a0e:                               ; preds = %dec_label_pc_24a04
  %8 = inttoptr i64 %2 to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_24a1b

dec_label_pc_24a1b:                               ; preds = %dec_label_pc_249a9, %dec_label_pc_24a0e, %dec_label_pc_24a04
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

