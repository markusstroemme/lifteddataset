@global_var_320 = external constant [20 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2bd3e:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630ac, align 4
  %3 = zext i32 %2 to i64
  %4 = icmp eq i32 %2, 5
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %rax.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2bdc7, label %dec_label_pc_2bd5d

dec_label_pc_2bd5d:                               ; preds = %dec_label_pc_2bd3e
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2bd75

dec_label_pc_2bd75:                               ; preds = %dec_label_pc_2bd75, %dec_label_pc_2bd5d
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2bdb4, label %dec_label_pc_2bd75

dec_label_pc_2bdb4:                               ; preds = %dec_label_pc_2bd75
  %13 = icmp eq i64 %6, 0
  store i64 %8, ptr %rax.1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2bdc7, label %dec_label_pc_2bdbb

dec_label_pc_2bdbb:                               ; preds = %dec_label_pc_2bdb4
  %14 = inttoptr i64 %6 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_2bdc7

dec_label_pc_2bdc7:                               ; preds = %dec_label_pc_2bdbb, %dec_label_pc_2bdb4, %dec_label_pc_2bd3e
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

