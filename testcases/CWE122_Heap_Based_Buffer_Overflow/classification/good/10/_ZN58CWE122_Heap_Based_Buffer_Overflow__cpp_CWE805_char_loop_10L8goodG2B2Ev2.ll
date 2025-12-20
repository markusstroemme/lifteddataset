@0 = external global i32
@global_var_6c050 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_844e:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-136.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c050, align 4
  %2 = icmp eq i32 %1, 0
  store ptr null, ptr %stack_var_-136.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8490, label %dec_label_pc_847b

dec_label_pc_847b:                                ; preds = %dec_label_pc_844e
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store ptr %4, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_8490

dec_label_pc_8490:                                ; preds = %dec_label_pc_847b, %dec_label_pc_844e
  %stack_var_-136.0.reload = load ptr, ptr %stack_var_-136.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = ptrtoint ptr %stack_var_-136.0.reload to i64
  %7 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_84b4

dec_label_pc_84b4:                                ; preds = %dec_label_pc_84b4, %dec_label_pc_8490
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = add i64 %storemerge2.reload, %6
  %9 = add i64 %storemerge2.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_84db, label %dec_label_pc_84b4

dec_label_pc_84db:                                ; preds = %dec_label_pc_84b4
  %14 = add i64 %6, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  call void @printLine(ptr %stack_var_-136.0.reload)
  %16 = icmp eq ptr %stack_var_-136.0.reload, null
  br i1 %16, label %dec_label_pc_8505, label %dec_label_pc_84f9

dec_label_pc_84f9:                                ; preds = %dec_label_pc_84db
  %17 = bitcast ptr %stack_var_-136.0.reload to ptr
  call void @_ZdaPv(ptr %17, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_8505

dec_label_pc_8505:                                ; preds = %dec_label_pc_84f9, %dec_label_pc_84db
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_851a, label %dec_label_pc_8515

dec_label_pc_8515:                                ; preds = %dec_label_pc_8505
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_851a

dec_label_pc_851a:                                ; preds = %dec_label_pc_8515, %dec_label_pc_8505
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

