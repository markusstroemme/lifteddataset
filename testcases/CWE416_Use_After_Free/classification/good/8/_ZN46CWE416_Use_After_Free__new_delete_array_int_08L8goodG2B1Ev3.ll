@global_var_4a2dd = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.404() local_unnamed_addr {
dec_label_pc_2421d:
  ret i32 1
}

define i32 @staticReturnsFalse.405() local_unnamed_addr {
dec_label_pc_2422c:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_243d9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsFalse.405()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2440c, label %dec_label_pc_243fb

dec_label_pc_243fb:                               ; preds = %dec_label_pc_243d9
  call void @printLine(ptr @global_var_4a2dd)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_24449

dec_label_pc_2440c:                               ; preds = %dec_label_pc_243d9
  %4 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_24424

dec_label_pc_24424:                               ; preds = %dec_label_pc_24424, %dec_label_pc_2440c
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_24449.loopexit, label %dec_label_pc_24424

dec_label_pc_24449.loopexit:                      ; preds = %dec_label_pc_24424
  %9 = inttoptr i64 %4 to ptr
  store ptr %9, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_24449

dec_label_pc_24449:                               ; preds = %dec_label_pc_24449.loopexit, %dec_label_pc_243fb
  %10 = call i32 @staticReturnsTrue.404()
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i1 %11, false
  %13 = zext i1 %12 to i64
  %14 = and i32 %10, -256
  %15 = sext i32 %14 to i64
  %16 = or i64 %13, %15
  %17 = icmp eq i1 %12, false
  store i64 %16, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_24464, label %dec_label_pc_24457

dec_label_pc_24457:                               ; preds = %dec_label_pc_24449
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %18 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %18)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_24464

dec_label_pc_24464:                               ; preds = %dec_label_pc_24457, %dec_label_pc_24449
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

