@global_var_4a2dd = external constant [21 x i8]
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
dec_label_pc_242cb:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.404()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_2433d, label %dec_label_pc_242ed

dec_label_pc_242ed:                               ; preds = %dec_label_pc_242cb
  %6 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_24305

dec_label_pc_24305:                               ; preds = %dec_label_pc_24305, %dec_label_pc_242ed
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2432a, label %dec_label_pc_24305

dec_label_pc_2432a:                               ; preds = %dec_label_pc_24305
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %dec_label_pc_2433d, label %dec_label_pc_24331

dec_label_pc_24331:                               ; preds = %dec_label_pc_2432a
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_2433d

dec_label_pc_2433d:                               ; preds = %dec_label_pc_24331, %dec_label_pc_2432a, %dec_label_pc_242cb
  %15 = call i32 @staticReturnsFalse.405()
  %16 = icmp eq i32 %15, 0
  %17 = icmp eq i1 %16, false
  %18 = zext i1 %17 to i64
  %19 = and i32 %15, -256
  %20 = sext i32 %19 to i64
  %21 = or i64 %18, %20
  %22 = icmp eq i1 %17, false
  store i64 %21, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_2435a, label %dec_label_pc_2434b

dec_label_pc_2434b:                               ; preds = %dec_label_pc_2433d
  call void @printLine(ptr @global_var_4a2dd)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2435a

dec_label_pc_2435a:                               ; preds = %dec_label_pc_2434b, %dec_label_pc_2433d
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

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

