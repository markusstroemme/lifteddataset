@global_var_320 = external constant [20 x i8]
@global_var_4a364 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_63060 = external local_unnamed_addr global i32
@global_var_630dc = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_26db7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630dc, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26de6, label %dec_label_pc_26dd5

dec_label_pc_26dd5:                               ; preds = %dec_label_pc_26db7
  call void @printLine(ptr @global_var_4a364)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_26e24

dec_label_pc_26de6:                               ; preds = %dec_label_pc_26db7
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_26dfe

dec_label_pc_26dfe:                               ; preds = %dec_label_pc_26dfe, %dec_label_pc_26de6
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_26e24.loopexit, label %dec_label_pc_26dfe

dec_label_pc_26e24.loopexit:                      ; preds = %dec_label_pc_26dfe
  %phitmp = inttoptr i64 %2 to ptr
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_26e24

dec_label_pc_26e24:                               ; preds = %dec_label_pc_26e24.loopexit, %dec_label_pc_26dd5
  %7 = load i32, ptr @global_var_63060, align 4
  %8 = icmp eq i32 %7, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_26e3d, label %dec_label_pc_26e2e

dec_label_pc_26e2e:                               ; preds = %dec_label_pc_26e24
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %9 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLine(i64 %9)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26e3d

dec_label_pc_26e3d:                               ; preds = %dec_label_pc_26e2e, %dec_label_pc_26e24
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

