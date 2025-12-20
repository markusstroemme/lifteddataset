@global_var_320 = external constant [20 x i8]
@global_var_49b4a = external constant [21 x i8]

define i32 @staticReturnsTrue.87() local_unnamed_addr {
dec_label_pc_9382:
  ret i32 1
}

define i32 @staticReturnsFalse.88() local_unnamed_addr {
dec_label_pc_9391:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_943d:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.87()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_94ba, label %dec_label_pc_945f

dec_label_pc_945f:                                ; preds = %dec_label_pc_943d
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_9488, label %dec_label_pc_9474

dec_label_pc_9474:                                ; preds = %dec_label_pc_945f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9488:                                ; preds = %dec_label_pc_945f, %dec_label_pc_9488
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %3
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add i64 %6, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_94ae, label %dec_label_pc_9488

dec_label_pc_94ae:                                ; preds = %dec_label_pc_9488
  call void @free(ptr %2)
  br label %dec_label_pc_94ba

dec_label_pc_94ba:                                ; preds = %dec_label_pc_94ae, %dec_label_pc_943d
  %13 = call i32 @staticReturnsFalse.88()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_94d7, label %dec_label_pc_94c8

dec_label_pc_94c8:                                ; preds = %dec_label_pc_94ba
  call void @printLine(ptr @global_var_49b4a)
  br label %dec_label_pc_94d7

dec_label_pc_94d7:                                ; preds = %dec_label_pc_94c8, %dec_label_pc_94ba
  ret void
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

