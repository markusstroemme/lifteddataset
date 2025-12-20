@global_var_320 = external constant [20 x i8]
@global_var_49b35 = external constant [21 x i8]
@global_var_6301c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_9114:
  %.reg2mem = alloca i32, align 4
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_6301c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_918e, label %dec_label_pc_9133

dec_label_pc_9133:                                ; preds = %dec_label_pc_9114
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_915c, label %dec_label_pc_9148

dec_label_pc_9148:                                ; preds = %dec_label_pc_9133
  call void @exit(i32 -1)
  unreachable

dec_label_pc_915c:                                ; preds = %dec_label_pc_9133, %dec_label_pc_915c
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge1.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %4
  %10 = inttoptr i64 %9 to ptr
  store i64 5, ptr %10, align 8
  %11 = add i64 %7, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_9182, label %dec_label_pc_915c

dec_label_pc_9182:                                ; preds = %dec_label_pc_915c
  call void @free(ptr %3)
  %.pr = load i32, ptr @global_var_6301c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_918e

dec_label_pc_918e:                                ; preds = %dec_label_pc_9182, %dec_label_pc_9114
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  br i1 %14, label %dec_label_pc_91a8, label %dec_label_pc_9199

dec_label_pc_9199:                                ; preds = %dec_label_pc_918e
  call void @printLine(ptr @global_var_49b35)
  br label %dec_label_pc_91a8

dec_label_pc_91a8:                                ; preds = %dec_label_pc_9199, %dec_label_pc_918e
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

